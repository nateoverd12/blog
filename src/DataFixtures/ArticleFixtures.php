<?php

namespace App\DataFixtures;

use Faker;
use App\Entity\User;
use App\Entity\Article;

use App\Service\Slugify;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class ArticleFixtures extends Fixture implements DependentFixtureInterface
{   
    public function getDependencies(): array
    {
        return [CategoryFixtures::class, UserFixtures::class];
    }

    public function load(ObjectManager $manager): void
    {   
        $slugify=new Slugify();
        for($i=0;$i<50;$i++){
            $article = new Article();
            $faker  =  Faker\Factory::create('fr_FR');
            $article->setTitle(rtrim(mb_strtolower($faker->sentence()),"."));
            $article->setContent($faker->sentence(10));
            $i>30?$article->setAuthor($this->getReference('for_test')):$article->setAuthor($this->getReference('only_author'));
            $article->setSlug($slugify->generate($article->getTitle()));

            $manager->persist($article);
            $article->setCategory($this->getReference('categorie_'.$faker->numberBetween(0,3)));
        }
        $manager->flush();
    }
}
