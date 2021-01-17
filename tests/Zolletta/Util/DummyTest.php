<?php
declare(strict_types=1);

use Zolletta\Util\Dummy;

use PHPUnit\Framework\TestCase;

class DummyTest extends TestCase
{

    /**
     * @covers Zolletta\Util\Dummy::elabora
     */
    public function testElabora():void
    {
        $a = new Dummy();
        $result = $a->elabora();
        $this->assertEquals(1, $result);
    }

}
