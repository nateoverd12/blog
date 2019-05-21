<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Response;
use App\Entity\Article;
use App\Entity\Category;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Component\HttpFoundation\Request;
use App\Form\ArticleSearchType;
use App\Form\CategoryType;

use App\Entity\Tag;

use App\Repository\ArticleRepository;

/**
 * @Route("/blog", name="blog_")
 */
class BlogController extends AbstractController
{
    /**
    * Show all row from article's entity
    *
    * @Route("/list", name="index")
    * @return Response A response instance
    */
    public function index(Request $request, ArticleRepository $ArticleRepo): Response
    {   
        $page= $request->query->get('page')??1;
        $articles=$ArticleRepo->findBy([],[],8,($page-1)*8);
        $pages=['actual' => $page,'last'=> ceil($ArticleRepo->count([])/8)];

        if (!$articles) {
            throw $this->createNotFoundException(
            'No article found in article\'s table.'
            );
        }
        
        $categories = $this->getDoctrine()
                ->getRepository(Category::class)
                ->findAll();

        return $this->render(
                'blog/index.html.twig',
                ['articles' => $articles,'categories'=>$categories,'pages'=> $pages]
        );
    }


    /** Getting a article with a formatted slug for title
     *
     * @param string $slug The slugger
     *
     * @Route("/{slug<^[a-z0-9-]+$>}",
     *     defaults={"slug" = null},
     *     name="show")
     *  @return Response A response instance
     */
    public function show(?string $slug) : Response
    {
        if (!$slug) {
                throw $this
                ->createNotFoundException('No slug has been sent to find an article in article\'s table.');
            }

        $slug = preg_replace(
        '/-/',
        ' ', ucwords(trim(strip_tags($slug)), "-")
            );

        $article = $this->getDoctrine()
                ->getRepository(Article::class)
                ->findOneBy(['title' => mb_strtolower($slug)]);
                //La méthode findOneBy() peut être utilisée de différentes manières. Tu peux sélectionner directement la propriété sur laquelle rechercher l’information, notamment grâce à la méthode magique __call() émulant un appel de méthode, on a pour exemples : findOneByNomDuChamp(), findOneById(), findOneByName()). Par conséquent, findOneByTitle(mb_strtolower($slug)) aurait très bien pu fonctionner à la place de findOneBy(['title' => mb_strtolower($slug)])

        if (!$article) {
            throw $this->createNotFoundException(
            'No article with '.$slug.' title, found in article\'s table.'
        );
        }

        return $this->render(
        'blog/show.html.twig',
        [
                'article' => $article,
                'slug' => $slug,
        ]
        );
    }

    /** Getting articles from a defined category
     *
     * @Route("/category/{categoryName}", name="show_category")
     * @ParamConverter("category", class="App\Entity\Category", options={"mapping":{"categoryName":"name"}} )
     *  @return Response A response instance
     */
    public function showByCategory(Category $category): Response
    {   
        // if (!$categoryName) {
        //         throw $this
        //         ->createNotFoundException('No category with that name.');
        //     }
        // $categoryName = preg_replace('/-/',' ', ucwords(trim(strip_tags($categoryName)), "-"));
        // $category = $this->getDoctrine()
        //         ->getRepository(Category::class)
        //         ->findOneByName($categoryName);

        // $articles = $this->getDoctrine()
        //         ->getRepository(Article::class)
        //         ->findBy(['category' => $category],['id'=>'DESC'],3);

        return $this->render('blog/category.html.twig',['category' => $category->getName(),'articles' => $category->getArticles()]);
    }

    
    /** Getting articles from a defined tag
     *
     * @Route("/tag/{name}", name="show_tag")
     *  @return Response A response instance
     */
    public function showByTag(Tag $tag): Response
    {   
        dump($tag->getName());
        return $this->render('blog/tag.html.twig',['articles' => $tag->getArticles(),'tagName' => $tag->getName()]);
    }
}
