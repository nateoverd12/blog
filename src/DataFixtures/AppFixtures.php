<?php

namespace App\DataFixtures;

use App\Entity\Tag;
use App\Entity\Article;
use App\Entity\Category;

use App\Service\Slugify;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
// use Doctrine\Common\DataFixtures\DependentFixtureInterface;

//implements DependentFixtureInterface
class AppFixtures extends Fixture
{   
    /**
    * @var Slugify
    */
    private $slugify;

    /**
    * AppFixtures constructor.
    * @param Slugify $slugify
    */
    public function __construct(Slugify $slugify)
    {
        $this->slugify = $slugify;
    }

    public function load(ObjectManager $manager): void
    {   
        for ($i = 1; $i <= 1000; $i++) {
            $category = new Category();
            $category->setName("category " . $i);
            $manager->persist($category);
            
            $tag = new Tag();
            $tag->setName("tag " . $i);
            $manager->persist($tag);
            $tag2= new Tag();
            $tag2->setName('tag'.strval(1000-$i));
            $manager->persist($tag2);
            
            $article = new Article();
            $article->setTitle("article " . $i);
            $article->setSlug($this->slugify->generate($article->getTitle()));
            $article->setContent("article " . $i . " content");
            $article->setCategory($category);
            if ($i>10){
                $article->addTag($tag);
                $article->addTag($tag2);
            };
            $manager->persist($article);
        }
        $manager->flush();
    }
}
