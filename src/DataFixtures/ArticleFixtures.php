<?php

namespace App\DataFixtures;

use App\Entity\Article;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

use Doctrine\Common\DataFixtures\DependentFixtureInterface;

use Faker;

class ArticleFixtures extends Fixture implements DependentFixtureInterface
{   
    public function getDependencies(): array
    {
        return [CategoryFixtures::class];
    }

    public function load(ObjectManager $manager): void
    {   
        for($i=0;$i<50;$i++){
            $article = new Article();
            $faker  =  Faker\Factory::create('fr_FR');
            $article->setTitle(rtrim(mb_strtolower($faker->sentence()),"."));
            $article->setContent($faker->sentence(10));

            $manager->persist($article);
            $article->setCategory($this->getReference('categorie_'.$faker->numberBetween(0,3)));
        }
        $manager->flush();
    }
}
