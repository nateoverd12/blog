<?php

namespace App\Controller;

use App\Entity\Category;
use App\Form\CategoryType;

use Symfony\Component\HttpFoundation\Request;

use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/category", name="category_")
 */
class CategoryController extends AbstractController
{
    /** Creating a category
     * 
     * @Route("/add", name="create")
     * @IsGranted("ROLE_ADMIN")
     * @return Response A response instance
     */
    public function add(Request $request,ObjectManager $manager): Response
    {   
        $category=new Category();
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $manager->persist($category);
            $manager->flush();
            $this->addFlash('success', 'The new category has been created');
            return $this->redirectToRoute('blog_index');

        }

        return $this->render(
                'blog/create.html.twig',
                ['form' => $form->createView()]
        );
    }

    /** Removing an empty category
     *
     *
     * @Route("/remove/{id}", name="delete", methods={"DELETE"})
     *  @return Response A response instance
     */
    // what-s methods DELETE is for ?
    public function remove(Category $category, Request $request): Response
    {   
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($category);
            $entityManager->flush();
            $this->addFlash('danger', 'The category has been deleted');
        }

        return $this->redirectToRoute('blog_index');
    }
}