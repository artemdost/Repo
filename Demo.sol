// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;



/** @title SimpleStorage 
* @author DArtem
*/
contract SimpleStorage {
    uint256 private data;

    /**
     * @dev Событие для обновления информации дате
     * @param oldData старая информация
     * @param newData новая информация
     */
    event DataUpdated(uint256 oldData, uint256 newData);

    /**
    * @dev Функция обновляет data
    * @param _data старая информация
    */
    function setData(uint256 _data) external {
        uint256 oldData = data;
        data = _data;
        emit DataUpdated(oldData, _data);
    }

    /**
    * @dev Функция возвращает data
    * @return data 
    */
    function getData() external view returns (uint256) {
        return data;
    }
}
