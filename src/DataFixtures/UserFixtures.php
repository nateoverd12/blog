<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;

use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserFixtures extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager)
    {
        // “auteur” user type created 
        $author = new User();
        $author->setEmail('author@monsite.com');
        $author->setRoles(['ROLE_AUTHOR']);
        $author->setPassword($this->passwordEncoder->encodePassword(
            $author,
            'authorpassword'
        ));

        $manager->persist($author);
        $this->addReference('only_author',$author);

        // author test user type created 
        $author = new User();
        $author->setEmail('test@monsite.com');
        $author->setRoles(['ROLE_AUTHOR']);
        $author->setPassword($this->passwordEncoder->encodePassword(
            $author,
            'testpassword'
        ));

        $manager->persist($author);
        $this->addReference('for_test',$author);

        // “administrateur” user type created
        $admin = new User();
        $admin->setEmail('admin@monsite.com');
        $admin->setRoles(['ROLE_ADMIN']);
        $admin->setPassword($this->passwordEncoder->encodePassword(
            $admin,
            'adminpassword'
        ));

        $manager->persist($admin);

        // Save both new users :
        $manager->flush();
    }
}
